/*+ NestLoop(u p ph b)
 NestLoop(u p ph)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 IndexScan(ph)
 IndexScan(b)
 Leading((((u p) ph) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=5 AND p.Score=0 AND p.AnswerCount=4 AND p.FavoriteCount>=0 AND p.FavoriteCount<=9 AND u.Reputation>=1 AND u.CreationDate>='2011-02-15 01:19:19'::timestamp AND u.CreationDate<='2014-09-13 05:04:12'::timestamp;

