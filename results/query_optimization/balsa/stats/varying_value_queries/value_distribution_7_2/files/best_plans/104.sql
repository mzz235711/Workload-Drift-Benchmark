/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 NestLoop(v p)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>99 AND p.Score<158 AND p.CommentCount>2 AND p.CommentCount<18 AND u.DownVotes>0 AND u.DownVotes<1185 AND v.CreationDate>'2011-04-06 21:16:06'::timestamp AND v.CreationDate<'2011-12-19 02:32:16'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2012-06-29 05:01:03'::timestamp AND b.Date<'2012-12-27 10:25:31'::timestamp;

