/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<154 AND p.CommentCount>5 AND p.CommentCount<17 AND u.DownVotes>639 AND u.DownVotes<1487 AND v.CreationDate>'2009-06-24 03:28:16'::timestamp AND v.CreationDate<'2012-03-04 22:27:47'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<15 AND b.Date>'2010-10-11 14:32:00'::timestamp AND b.Date<'2013-07-26 21:54:30'::timestamp;

