/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<134 AND p.CommentCount>17 AND p.CommentCount<43 AND u.DownVotes>222 AND u.DownVotes<1373 AND v.CreationDate>'2010-06-05 19:45:43'::timestamp AND v.CreationDate<'2012-10-14 03:57:06'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<10 AND b.Date>'2011-02-17 05:09:44'::timestamp AND b.Date<'2013-06-10 14:13:47'::timestamp;

