import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("dev") {
            dimension = "flavor-type"
            applicationId = "com.wakku.minjok.dev"
            resValue(type = "string", name = "app_name", value = "와꾸의 민족 dev")
        }
        create("prod") {
            dimension = "flavor-type"
            applicationId = "com.wakku.minjok"
            resValue(type = "string", name = "app_name", value = "와꾸의 민족")
        }
    }
}