/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<23 AND p.CommentCount>6 AND p.CommentCount<36 AND u.DownVotes>262 AND u.DownVotes<818 AND v.CreationDate>'2009-10-28 00:08:50'::timestamp AND v.CreationDate<'2012-05-13 00:33:28'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<10 AND b.Date>'2011-04-14 03:11:55'::timestamp AND b.Date<'2012-06-11 16:57:01'::timestamp;

