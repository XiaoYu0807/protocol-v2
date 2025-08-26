// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.6.12;

library DataTypes {
  // 请参阅白皮书第 1.1 节基本概念，了解这些属性的正式描述。
  struct ReserveData {
    //存储备用配置
    ReserveConfigurationMap configuration;
    //流动性指数。以射线表示
    uint128 liquidityIndex;
    //变量借位指数。以射线表示
    uint128 variableBorrowIndex;
    //当前供给率。以射线表示
    uint128 currentLiquidityRate;
    //当前可变借贷利率。以射线表示
    uint128 currentVariableBorrowRate;
    //当前稳定借贷利率。以射线表示
    uint128 currentStableBorrowRate;
    uint40 lastUpdateTimestamp;
    //代币地址
    address aTokenAddress;
    address stableDebtTokenAddress;
    address variableDebtTokenAddress;
    //利率策略演讲
    address interestRateStrategyAddress;
    //储备的ID。表示在活跃储备列表中的位置
    uint8 id;
  }

  struct ReserveConfigurationMap {
    //bit 0-15: LTV
    //bit 16-31: Liq. threshold
    //bit 32-47: Liq. bonus
    //bit 48-55: Decimals
    //bit 56: Reserve is active
    //bit 57: reserve is frozen
    //bit 58: borrowing is enabled
    //bit 59: stable rate borrowing enabled
    //bit 60-63: reserved
    //bit 64-79: reserve factor
    uint256 data;
  }

  struct UserConfigurationMap {
    uint256 data;
  }

  enum InterestRateMode {NONE, STABLE, VARIABLE}
}
