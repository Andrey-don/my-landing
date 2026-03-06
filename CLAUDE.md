# CLAUDE.md — Правила работы с проектом

Паспорт проекта: [project.md](project.md)
Исследование: [research.md](research.md)
План разработки: [PLAN.md](PLAN.md)

---

## Текущее состояние проекта

> Обновлено: март 2026

**HTML-прототип MVP готов.** Astro-проект ещё не инициализирован.

| Файл | Статус |
|---|---|
| `index.html` | Полный MVP-прототип на vanilla HTML/CSS/JS — рабочий лендинг |
| `images/hero_idle.webp` | Hero, правая колонка (520px, rounded, glow, 3D tilt) |
| `images/agent-orion.webp` | Секция «О себе» (380px круг, object-position: center 10%) |
| `images/ai-automation.webp` | Секция «Что я внедряю» (section-img, 16:9) |
| `images/ai-development.webp` | Секция «Что я делаю» (section-img, 16:9) |
| `images/ai-process.webp` | Секция «Как мы работаем» (section-img, 16:9) |
| `images/ai-results-dashboard.webp` | Секция «Что получают клиенты» (section-img, 16:9) |
| `images/ai-expert-control.webp` | Секция «Почему выбирают меня» (section-img, 16:9) |
| `images/logo.webp` | Navbar (width: 36px) |
| `images/favicon.png` | `<link rel="icon">` в head |

**Git:** репозиторий `Andrey-don/my-landing` на GitHub, ветка `master`.
**Деплой:** не подключён (следующий шаг — Vercel или Netlify).

---

## Архитектура проекта

**Финальный стек (после перехода на Astro):**
- **Фреймворк:** Astro
- **Стили:** Tailwind CSS
- Компонентная структура: каждая секция — отдельный компонент в `src/components/sections/`
- Минимум JavaScript: только форма, интерактивные элементы, canvas-анимация
- Цель по производительности: PageSpeed Insights > 85

**Текущий прототип:**
- Один файл `index.html` — весь HTML, CSS и JS внутри
- Никаких внешних зависимостей кроме Google Fonts (Inter)

---

## Дизайн-система

| Параметр | Значение |
|---|---|
| Стиль | Dark + Glassmorphism |
| Фон | `#050508` / `#0c0c14` |
| Акцент 1 | `#00d4ff` (electric cyan) — кнопки, ссылки, hover, иконки AI |
| Акцент 2 | `#7c3aed` / `#a78bfa` (purple) — иконки услуг, second glow |
| Карточки | `rgba(255,255,255,0.03)` + `backdrop-filter: blur(14px)` + border `rgba(255,255,255,0.07)` |
| Border hover | `rgba(0,212,255,0.3)` |
| Шрифт | Inter (Google Fonts) |
| Отступы секций | `80px` desktop / `70px` tablet ≤1024px / `56px` mobile ≤768px |
| Радиусы | `10px` (sm) / `16px` (md) / `24px` (lg) |
| Анимации | CSS transitions + IntersectionObserver, без GSAP |

**Section eyebrow (.section-eyebrow):**
- `font-size: 1.125rem` (18px), `font-weight: 600`, `letter-spacing: 0.12em`
- Цвет `var(--accent)`, `text-transform: uppercase`
- `::before` — линия `32px × 2px`, cyan, `border-radius: 2px`
- `margin-bottom: 16px`

**Section images (.section-img):**
- `aspect-ratio: 16 / 9`, `object-fit: cover`, `object-position: top center`
- `max-width: 780px` (по умолчанию), переопределяется inline до `900px` там где нужно
- `margin: 2.5rem auto 48px`, `border-radius: var(--radius)`, `opacity: 0.88`

**Canvas-фон:**
- Анимированная сетка 64×64px
- 70 плавающих частиц (cyan + purple), скорость 0.28px/frame
- Радиальное свечение от курсора мыши на canvas
- Cursor glow overlay: `radial-gradient` 600px следует за мышью

---

## Структура MVP лендинга

Порядок секций в `index.html` (зафиксирован):

1. **Hero** — headline «Внедряю AI-агентов в ваш бизнес», subheadline, CTA + `hero_idle.webp` (520px, 3D tilt)
2. **AI Solutions** — eyebrow + h2 + subtitle + `ai-automation.webp` (900px) + 6 glassmorphism-карточек
3. **Процесс** — eyebrow + h2 + subtitle + `ai-process.webp` + 4 шага-карточки (glassmorphism, как why-cards)
4. **Услуги** — eyebrow + h2 + subtitle + `ai-development.webp` + 4 карточки
5. **Case Results** — eyebrow + h2 + subtitle + `ai-results-dashboard.webp` + 4 метрики
6. **Обо мне** — `agent-orion.webp` (380px круг) + имя **Agent Orion** + стек технологий
7. **Почему со мной** — eyebrow + h2 + `ai-expert-control.webp` + 6 карточек
8. **FAQ** — 8 вопросов, рендер через JS
9. **Контакты** — форма (3 поля) + Telegram + email
10. **CTA** — «Готовы внедрить AI в ваш бизнес?»

**Кейсы и отзывы — только в v2.**

---

## Интерактивность

- **Scroll-to-top кнопка** — `fixed`, `bottom: 24px`, `right: 24px`, `48px` круглая, появляется при скролле > 400px
- **Floating Telegram кнопка** — удалена
- **Hero 3D tilt** — lerp + rAF, max 4.5°, perspective на `.hero-inner`
- **Scroll reveal** — IntersectionObserver + stagger delay (`.reveal`, `.d1`–`.d3`)
- **FAQ accordion** — рендер и открытие/закрытие через JS
- **Burger menu** — мобильное меню

---

## Контент

- Имя автора: **Agent Orion**
- Telegram: `@username` (заменить на реальный)
- Email: `hello@example.com` (заменить на реальный)
- Язык: русский (основной), английский (упомянут в FAQ)
- Тон: простой, дружелюбный, без корпоративных штампов
- CTA-кнопки: «Обсудить проект» / «Написать в Telegram» / «Записаться на консультацию»

---

## Вёрстка

- **Mobile-first:** breakpoints 1024px, 768px, 500px
- Полная адаптивность: `grid-template-columns` меняется на каждом breakpoint
- Hero-изображение скрывается на `≤1024px` (`display: none`)
- Кнопки и интерактивные элементы: минимум 44×44px
- Нет горизонтального скролла на мобильном

---

## Правила работы ИИ

- **Перед созданием новых файлов** — объяснить, что и зачем
- **Перед установкой зависимостей** — предложить альтернативу без неё
- Не менять порядок секций без явного запроса
- Не добавлять секции (кейсы, отзывы) — это v2
- Для правок изображений использовать **Python** (не python3 — на Windows не работает)
- Коммиты с `Co-Authored-By: Claude Sonnet 4.6 <noreply@anthropic.com>`
- При любых сомнениях — задавать вопросы, а не принимать решения самостоятельно
