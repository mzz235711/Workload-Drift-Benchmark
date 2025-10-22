/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<159 AND p.CommentCount>18 AND p.CommentCount<34 AND u.DownVotes>63 AND u.DownVotes<808 AND v.CreationDate>'2009-06-05 19:42:41'::timestamp AND v.CreationDate<'2014-06-07 00:39:47'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2011-03-26 05:56:05'::timestamp AND b.Date<'2014-03-16 11:40:44'::timestamp;

