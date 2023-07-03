package com.hss01248.account_saver_against_uninstall;

import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;

import com.blankj.utilcode.util.ActivityUtils;
import com.hss01248.accountcache.AccountCacher;
import com.hss01248.accountcache.AccountCallback;
import com.hss01248.accountcache.DebugAccount;

import java.util.HashMap;
import java.util.Map;

/**
 * @Despciption todo
 * @Author hss
 * @Date 03/07/2023 11:23
 * @Version 1.0
 */
public class AccountSaverImpl implements AccountSaverPigeon.IAccountSaver{
    @Override
    public void init(@NonNull Long dev, @NonNull Long test, @NonNull Long release,
                     @NonNull Boolean storeReleaseAccount, @NonNull AccountSaverPigeon.Result<Void> result) {
        AccountCacher.configHostType(dev.intValue(),test.intValue(),release.intValue());
        AccountCacher.storeReleaseAccount = storeReleaseAccount;
    }

    @Override
    public void selectAccount(@NonNull Long hostType, @NonNull String countryCode,
                              @NonNull AccountSaverPigeon.Result<Map<String, Object>> result) {

        AccountCacher.selectAccount(hostType.intValue(), (FragmentActivity) ActivityUtils.getTopActivity(), countryCode, new AccountCallback() {
            @Override
            public void onSuccess(DebugAccount account) {
                Map<String,Object> map = new HashMap<>();
                map.put("account",account.getAccount());
                map.put("pw",account.getPw());
                map.put("hostType",account.getHostType());
                result.success(map);
            }

            @Override
            public void onError(Throwable error) {
                result.error(error);
            }
        });
    }

    @Override
    public void saveAccount(@NonNull Long currentHostType, @NonNull String countryCode, @NonNull String account,
                            @NonNull String pw, @NonNull AccountSaverPigeon.Result<Void> result) {
        AccountCacher.saveAccount(ActivityUtils.getTopActivity(),currentHostType.intValue(),countryCode,account,pw);
    }
}
