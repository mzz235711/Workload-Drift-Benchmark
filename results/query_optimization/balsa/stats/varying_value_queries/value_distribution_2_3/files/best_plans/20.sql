/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<170 AND p.CommentCount>2 AND p.CommentCount<21 AND u.DownVotes>268 AND u.DownVotes<899 AND v.CreationDate>'2010-05-04 11:39:31'::timestamp AND v.CreationDate<'2012-05-08 05:44:55'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<9 AND b.Date>'2012-08-01 15:08:23'::timestamp AND b.Date<'2012-10-13 20:14:20'::timestamp;

