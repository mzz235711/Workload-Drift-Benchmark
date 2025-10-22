/*+ HashJoin(ph u v p)
 HashJoin(u v p)
 HashJoin(v p)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((ph (u (v p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.CreationDate>='2010-08-16 05:45:29'::timestamp AND ph.CreationDate<='2014-09-09 01:42:25'::timestamp AND p.ViewCount>=0 AND p.FavoriteCount<=3 AND p.CreationDate>='2010-07-27 19:12:53'::timestamp AND v.CreationDate='2014-06-22 00:00:00'::timestamp AND u.Reputation<=3091 AND u.DownVotes=0;

