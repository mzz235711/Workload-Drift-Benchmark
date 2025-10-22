/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<57 AND p.CommentCount>11 AND p.CommentCount<36 AND u.DownVotes>750 AND u.DownVotes<1091 AND v.CreationDate>'2009-02-12 17:39:51'::timestamp AND v.CreationDate<'2012-03-08 17:42:16'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<15 AND b.Date>'2012-07-05 08:12:02'::timestamp AND b.Date<'2014-06-04 05:32:52'::timestamp;

