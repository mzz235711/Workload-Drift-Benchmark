/*+ HashJoin(v p u b)
 NestLoop(u b)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading(((v p) (u b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<91 AND p.CommentCount>1 AND p.CommentCount<32 AND u.DownVotes>334 AND u.DownVotes<1596 AND v.CreationDate>'2010-06-19 15:27:39'::timestamp AND v.CreationDate<'2012-06-18 22:37:31'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2012-04-16 10:19:50'::timestamp AND b.Date<'2014-06-08 06:21:53'::timestamp;

