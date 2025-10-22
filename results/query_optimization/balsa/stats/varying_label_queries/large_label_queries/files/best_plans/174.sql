/*+ HashJoin(c u b p ph)
 MergeJoin(c u b p)
 NestLoop(u b p)
 MergeJoin(u b)
 IndexScan(c)
 IndexScan(u)
 IndexScan(b)
 IndexScan(p)
 SeqScan(ph)
 Leading(((c ((u b) p)) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.FavoriteCount=0 AND ph.CreationDate>='2011-02-24 10:16:34'::timestamp AND ph.CreationDate<='2014-09-01 19:34:48'::timestamp AND u.Reputation<=1917;

