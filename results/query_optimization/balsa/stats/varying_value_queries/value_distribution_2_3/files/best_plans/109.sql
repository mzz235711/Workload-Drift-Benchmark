/*+ MergeJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<122 AND p.CommentCount>5 AND p.CommentCount<7 AND u.DownVotes>412 AND u.DownVotes<1145 AND v.CreationDate>'2009-06-29 18:14:45'::timestamp AND v.CreationDate<'2012-05-30 18:29:31'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2010-09-15 03:35:05'::timestamp AND b.Date<'2014-01-25 00:22:10'::timestamp;

