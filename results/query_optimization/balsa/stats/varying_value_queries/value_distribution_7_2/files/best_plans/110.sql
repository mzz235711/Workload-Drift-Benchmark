/*+ MergeJoin(u v p b)
 MergeJoin(u v p)
 NestLoop(v p)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<151 AND p.CommentCount>1 AND p.CommentCount<10 AND u.DownVotes>71 AND u.DownVotes<207 AND v.CreationDate>'2009-12-20 14:50:54'::timestamp AND v.CreationDate<'2011-01-03 22:16:54'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<14 AND b.Date>'2012-08-17 20:54:37'::timestamp AND b.Date<'2013-03-16 02:18:46'::timestamp;

