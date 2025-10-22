/*+ HashJoin(v p u b)
 NestLoop(u b)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading(((v p) (u b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<66 AND p.CommentCount>3 AND p.CommentCount<38 AND u.DownVotes>366 AND u.DownVotes<1589 AND v.CreationDate>'2010-06-08 01:24:20'::timestamp AND v.CreationDate<'2012-08-31 23:10:22'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2010-10-19 18:03:22'::timestamp AND b.Date<'2014-04-04 05:36:08'::timestamp;

