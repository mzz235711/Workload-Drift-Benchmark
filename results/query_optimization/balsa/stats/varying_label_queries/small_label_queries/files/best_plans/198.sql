/*+ NestLoop(p u b pl)
 NestLoop(p u b)
 HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 IndexScan(pl)
 Leading((((p u) b) pl)) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount<=4 AND u.Reputation=54 AND b.Date<='2014-09-04 09:05:04'::timestamp;

