/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<183 AND p.CommentCount>7 AND p.CommentCount<37 AND u.DownVotes>129 AND u.DownVotes<1004 AND v.CreationDate>'2009-07-04 13:01:44'::timestamp AND v.CreationDate<'2012-08-25 16:18:43'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2013-06-19 05:29:47'::timestamp AND b.Date<'2014-02-07 18:21:10'::timestamp;

