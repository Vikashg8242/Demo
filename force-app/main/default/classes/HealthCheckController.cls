public with sharing class HealthCheckController {
    @AuraEnabled(cacheable=true)
    public static String ping() {
        return 'OK';
    }
}
