/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<140 AND p.CommentCount>6 AND p.CommentCount<38 AND u.DownVotes>140 AND u.DownVotes<1041 AND v.CreationDate>'2011-04-09 05:40:22'::timestamp AND v.CreationDate<'2013-09-22 03:50:50'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2011-11-07 08:01:02'::timestamp AND b.Date<'2012-05-25 06:19:46'::timestamp;

