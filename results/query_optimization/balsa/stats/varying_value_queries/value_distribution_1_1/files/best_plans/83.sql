/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>20 AND p.Score<37 AND p.CommentCount>6 AND p.CommentCount<20 AND u.DownVotes>373 AND u.DownVotes<1245 AND v.CreationDate>'2010-10-01 06:46:31'::timestamp AND v.CreationDate<'2011-06-04 19:46:22'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2012-04-29 04:10:44'::timestamp AND b.Date<'2014-01-21 18:21:18'::timestamp;

