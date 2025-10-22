/*+ MergeJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<22 AND p.CommentCount>4 AND p.CommentCount<37 AND u.DownVotes>357 AND u.DownVotes<764 AND v.CreationDate>'2010-05-12 07:12:57'::timestamp AND v.CreationDate<'2012-11-20 23:28:36'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<9 AND b.Date>'2010-09-28 10:10:50'::timestamp AND b.Date<'2011-06-19 07:05:22'::timestamp;

