/*+ HashJoin(v u p ph)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(ph)
 Leading(((v (u p)) ph)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.PostHistoryTypeId=4 AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-21 11:11:47'::timestamp AND v.VoteTypeId=2 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=57 AND u.CreationDate>='2011-02-26 12:17:36'::timestamp AND u.CreationDate<='2014-05-16 02:21:54'::timestamp;

