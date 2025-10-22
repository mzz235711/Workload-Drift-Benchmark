/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<35 AND p.CommentCount>15 AND p.CommentCount<35 AND u.DownVotes>7 AND u.DownVotes<1011 AND v.CreationDate>'2013-02-28 02:44:05'::timestamp AND v.CreationDate<'2013-12-05 02:54:05'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2013-07-22 00:21:01'::timestamp AND b.Date<'2013-08-04 16:44:25'::timestamp;

