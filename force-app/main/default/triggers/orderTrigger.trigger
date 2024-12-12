trigger orderTrigger on Order (before update) {
    OrderItemUtility.addBonusBouquetAsync(Trigger.newMap.keySet());
}