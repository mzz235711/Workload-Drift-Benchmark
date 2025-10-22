/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<18 AND p.CommentCount>3 AND p.CommentCount<13 AND u.DownVotes>46 AND u.DownVotes<302 AND v.CreationDate>'2012-02-13 23:09:34'::timestamp AND v.CreationDate<'2014-02-17 09:33:19'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<15 AND b.Date>'2013-01-09 16:11:47'::timestamp AND b.Date<'2013-10-07 01:34:31'::timestamp;

