/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<174 AND p.CommentCount>16 AND p.CommentCount<36 AND u.DownVotes>65 AND u.DownVotes<1324 AND v.CreationDate>'2011-03-16 22:22:55'::timestamp AND v.CreationDate<'2013-09-05 11:40:06'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2011-12-07 16:23:27'::timestamp AND b.Date<'2012-09-14 13:34:33'::timestamp;

