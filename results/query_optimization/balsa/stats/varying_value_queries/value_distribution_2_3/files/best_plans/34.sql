/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>73 AND p.Score<131 AND p.CommentCount>1 AND p.CommentCount<28 AND u.DownVotes>551 AND u.DownVotes<1545 AND v.CreationDate>'2009-11-21 22:54:38'::timestamp AND v.CreationDate<'2013-12-22 10:18:06'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2011-06-01 14:58:18'::timestamp AND b.Date<'2014-04-04 18:42:34'::timestamp;

