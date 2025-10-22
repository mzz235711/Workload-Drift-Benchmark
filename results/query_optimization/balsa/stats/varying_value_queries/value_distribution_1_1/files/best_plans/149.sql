/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<77 AND p.CommentCount>11 AND p.CommentCount<13 AND u.DownVotes>385 AND u.DownVotes<592 AND v.CreationDate>'2009-09-23 19:45:10'::timestamp AND v.CreationDate<'2013-06-29 15:21:18'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2011-05-25 09:03:19'::timestamp AND b.Date<'2014-01-20 10:07:53'::timestamp;

