/*+ NestLoop(u p b v)
 HashJoin(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 SeqScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<29 AND p.CommentCount>2 AND p.CommentCount<8 AND u.DownVotes>89 AND u.DownVotes<1321 AND v.CreationDate>'2011-04-18 16:02:43'::timestamp AND v.CreationDate<'2012-09-16 00:51:22'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2014-06-16 19:00:08'::timestamp AND b.Date<'2014-06-21 04:44:30'::timestamp;

