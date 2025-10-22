/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<119 AND p.CommentCount>7 AND p.CommentCount<35 AND u.DownVotes>750 AND u.DownVotes<1799 AND v.CreationDate>'2009-05-06 05:01:15'::timestamp AND v.CreationDate<'2011-08-23 14:15:03'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<12 AND b.Date>'2010-10-12 05:46:35'::timestamp AND b.Date<'2013-11-30 13:36:44'::timestamp;

