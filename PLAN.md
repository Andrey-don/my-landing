# PLAN.md — План разработки лендинга

Паспорт проекта: [project.md](project.md)
Правила работы: [CLAUDE.md](CLAUDE.md)

> Статусы: `[ ]` — не начато, `[~]` — в процессе, `[x]` — выполнено

> **Текущее состояние:** `index.html` — полный HTML-прототип MVP (все секции, анимации, форма).
> Astro-проект ещё не инициализирован — `index.html` служит живым референсом дизайна и контента.

---

## Этап 0 — HTML-прототип (выполнено)

- [x] Создать `index.html` — полный MVP-лендинг на vanilla HTML/CSS/JS
- [x] Дизайн-система: `#050508` фон, `#00d4ff` акцент, `#7c3aed` / `#a78bfa` purple
- [x] Canvas-фон: анимированная сетка + 70 плавающих частиц + mouse glow
- [x] Cursor reactive lighting
- [x] Hero: двухколоночный layout с placeholder-изображением и glow-halo
- [x] AI Solutions — 6 glassmorphism-карточек
- [x] Процесс работы — 4 шага
- [x] Услуги — 4 карточки
- [x] Case Results — 4 метрики (3×, 70%, 2 нед., 24/7)
- [x] Обо мне + стек технологий
- [x] Почему со мной — 6 карточек
- [x] FAQ accordion (8 вопросов, рендер через JS)
- [x] Форма контактов (3 поля + success state)
- [x] Финальный CTA «Готовы внедрить AI в ваш бизнес?»
- [x] Floating Telegram button (mobile)
- [x] Scroll reveal (IntersectionObserver + stagger)
- [x] Параллакс hero-огней при скролле
- [x] Mobile-first адаптивность + мобильное меню (burger)
- [x] Meta tags + Open Graph
- [x] Git + push на GitHub (Andrey-don/my-landing)

---

## Этап 1 — Setup Astro-проекта

- [ ] Инициализировать Astro проект
- [ ] Подключить Tailwind CSS
- [ ] Настроить базовую структуру папок (`src/components/`, `src/layouts/`, `src/pages/`)
- [ ] Создать основной layout (`BaseLayout.astro`)
- [ ] Подключить шрифты (`@fontsource/inter`)

---

## Этап 2 — Дизайн-система Astro

- [ ] Задать цвета в `tailwind.config`: `#050508`, `#00d4ff`, `#7c3aed`
- [ ] Добавить glassmorphism-утилиты
- [ ] Создать базовые компоненты: `Button.astro`, `Card.astro`, `SectionHeader.astro`
- [ ] Canvas-компонент для анимированного фона
- [ ] Настроить стили кнопок (primary, ghost)

---

## Этап 3 — Верстка MVP секций

- [ ] Hero (с изображением + glow)
- [ ] AI Solutions (6 карточек)
- [ ] Процесс работы (4 шага)
- [ ] Услуги (4 карточки)
- [ ] Case Results (метрики)
- [ ] Обо мне
- [ ] Почему со мной
- [ ] FAQ
- [ ] Контакты + финальный CTA

> Референс контента и дизайна — `index.html`. Кейсов и отзывов нет — это v2.

---

## Этап 4 — Интерактивность

- [ ] Плавный скролл
- [ ] Canvas-анимация фона (перенос из `index.html`)
- [ ] Cursor reactive lighting
- [ ] Hover-эффекты на карточках и кнопках
- [ ] Scroll reveal (IntersectionObserver)
- [ ] Floating-кнопка Telegram на мобильном

---

## Этап 5 — Контактная форма

- [ ] Подключить Formspree или Netlify Forms
- [ ] Проверить отправку и сообщение об успехе

---

## Этап 6 — SEO и оптимизация

- [ ] Meta title и description
- [ ] Open Graph теги (og:title, og:description, og:image)
- [ ] Оптимизация изображений (WebP, `<Image />` в Astro)
- [ ] Проверка Lighthouse / PageSpeed Insights (цель: > 85)
- [ ] `sitemap.xml` (через `@astrojs/sitemap`)

---

## Этап 7 — Деплой

- [x] GitHub репозиторий подключён (Andrey-don/my-landing)
- [ ] Деплой на Vercel или Netlify
- [ ] Проверка мобильной версии на реальных устройствах
- [ ] Финальная проверка всех секций и форм

---

## Этап 8 — V2 (будущие функции)

- [ ] Блок портфолио / кейсов
- [ ] Отдельные страницы кейсов `/cases/[slug]`
- [ ] Блок отзывов с фото и именами
- [ ] Логотипы клиентов (credibility strip)
- [ ] AI-чат на сайте как демо AI-экспертизы
- [ ] Анимации GSAP ScrollTrigger
- [ ] 3D-элемент в Hero (Three.js / Spline)
- [ ] Страница `/llms.txt`
- [ ] Блог / заметки
- [ ] A/B тест заголовка
