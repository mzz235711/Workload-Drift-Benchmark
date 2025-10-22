/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>51 AND p.Score<189 AND p.CommentCount>6 AND p.CommentCount<17 AND u.DownVotes>394 AND u.DownVotes<1267 AND v.CreationDate>'2010-09-30 03:46:11'::timestamp AND v.CreationDate<'2012-10-17 03:42:38'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2014-04-07 22:09:22'::timestamp AND b.Date<'2014-07-29 18:01:48'::timestamp;

