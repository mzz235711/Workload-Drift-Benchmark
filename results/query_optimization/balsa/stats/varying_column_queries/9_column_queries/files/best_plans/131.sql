/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate>='2010-07-21 00:09:09'::timestamp AND ph.CreationDate<='2014-08-17 16:35:42'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=17 AND p.FavoriteCount<=7 AND u.UpVotes<=55 AND u.CreationDate>='2010-07-19 19:03:27'::timestamp;

