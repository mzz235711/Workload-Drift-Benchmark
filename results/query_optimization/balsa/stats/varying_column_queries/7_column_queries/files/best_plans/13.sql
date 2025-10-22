/*+ HashJoin(p ph u)
 HashJoin(ph u)
 SeqScan(p)
 SeqScan(ph)
 IndexScan(u)
 Leading((p (ph u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.ViewCount<=3223 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount<=6 AND p.CreationDate<='2014-09-09 18:22:50'::timestamp AND u.DownVotes>=0 AND u.CreationDate='2014-01-30 12:24:17'::timestamp;

