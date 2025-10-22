/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<116 AND p.CommentCount>9 AND p.CommentCount<26 AND u.DownVotes>403 AND u.DownVotes<1249 AND v.CreationDate>'2009-11-26 15:08:35'::timestamp AND v.CreationDate<'2012-09-29 01:22:26'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2011-04-08 18:31:20'::timestamp AND b.Date<'2011-09-27 10:55:57'::timestamp;

