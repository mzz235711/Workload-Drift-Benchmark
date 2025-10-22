/*+ HashJoin(ph v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (v (p u)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.PostHistoryTypeId=34 AND ph.CreationDate<='2014-08-27 16:34:19'::timestamp AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND p.CreationDate>='2010-07-20 07:33:09'::timestamp AND p.CreationDate<='2014-09-11 11:41:08'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=3;

