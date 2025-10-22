/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<116 AND p.CommentCount>6 AND p.CommentCount<39 AND u.DownVotes>333 AND u.DownVotes<1467 AND v.CreationDate>'2010-04-26 05:13:19'::timestamp AND v.CreationDate<'2011-10-13 07:14:33'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2011-04-14 05:39:29'::timestamp AND b.Date<'2012-07-21 00:48:18'::timestamp;

