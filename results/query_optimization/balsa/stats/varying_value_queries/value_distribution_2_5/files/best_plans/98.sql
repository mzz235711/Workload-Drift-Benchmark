/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<18 AND p.CommentCount>12 AND p.CommentCount<39 AND u.DownVotes>260 AND u.DownVotes<860 AND v.CreationDate>'2011-02-12 00:20:34'::timestamp AND v.CreationDate<'2014-06-28 00:34:36'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2011-01-02 11:14:01'::timestamp AND b.Date<'2011-10-04 15:01:50'::timestamp;

