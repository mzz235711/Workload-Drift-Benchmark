/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>47 AND p.Score<100 AND p.CommentCount>7 AND p.CommentCount<17 AND u.DownVotes>579 AND u.DownVotes<1292 AND v.CreationDate>'2014-01-15 02:21:28'::timestamp AND v.CreationDate<'2014-08-31 03:50:46'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2010-11-23 10:01:00'::timestamp AND b.Date<'2013-06-12 21:27:21'::timestamp;

