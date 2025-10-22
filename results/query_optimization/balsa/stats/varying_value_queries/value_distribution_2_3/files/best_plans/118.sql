/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>26 AND p.Score<77 AND p.CommentCount>0 AND p.CommentCount<21 AND u.DownVotes>26 AND u.DownVotes<1873 AND v.CreationDate>'2014-04-26 09:06:58'::timestamp AND v.CreationDate<'2014-08-13 01:50:58'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2010-11-11 21:47:15'::timestamp AND b.Date<'2013-01-11 15:57:15'::timestamp;

