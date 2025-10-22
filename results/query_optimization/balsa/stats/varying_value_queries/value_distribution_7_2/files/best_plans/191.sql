/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>81 AND p.Score<130 AND p.CommentCount>2 AND p.CommentCount<39 AND u.DownVotes>642 AND u.DownVotes<1600 AND v.CreationDate>'2010-11-03 00:29:17'::timestamp AND v.CreationDate<'2012-07-22 16:52:05'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2011-08-21 09:41:56'::timestamp AND b.Date<'2013-02-13 13:14:39'::timestamp;

