/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>70 AND p.Score<181 AND p.CommentCount>9 AND p.CommentCount<23 AND u.DownVotes>93 AND u.DownVotes<1296 AND v.CreationDate>'2009-11-11 12:57:17'::timestamp AND v.CreationDate<'2012-12-18 06:21:54'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2010-08-11 10:34:56'::timestamp AND b.Date<'2012-04-28 01:48:00'::timestamp;

