/*+ MergeJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<91 AND p.CommentCount>3 AND p.CommentCount<15 AND u.DownVotes>93 AND u.DownVotes<453 AND v.CreationDate>'2009-06-07 16:05:02'::timestamp AND v.CreationDate<'2014-08-28 11:10:14'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2012-12-19 19:50:22'::timestamp AND b.Date<'2013-08-19 02:06:05'::timestamp;

