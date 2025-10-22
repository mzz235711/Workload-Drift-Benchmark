/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<70 AND p.CommentCount>11 AND p.CommentCount<31 AND u.DownVotes>668 AND u.DownVotes<1452 AND v.CreationDate>'2011-06-06 09:24:31'::timestamp AND v.CreationDate<'2013-12-13 18:48:51'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2013-05-05 01:39:38'::timestamp AND b.Date<'2013-10-25 07:51:40'::timestamp;

