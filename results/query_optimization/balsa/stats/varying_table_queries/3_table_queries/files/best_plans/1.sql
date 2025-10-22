/*+ MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(v)
 IndexScan(p)
 IndexScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=12515 AND p.AnswerCount>=0 AND p.FavoriteCount<=7 AND u.Reputation>=1 AND u.Views<=113 AND u.DownVotes>=0 AND u.CreationDate>='2010-08-04 09:24:36'::timestamp AND u.CreationDate<='2014-07-24 11:36:33'::timestamp;

