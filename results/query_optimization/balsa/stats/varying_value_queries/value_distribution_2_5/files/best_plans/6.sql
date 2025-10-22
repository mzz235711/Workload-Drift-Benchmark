/*+ NestLoop(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>61 AND p.Score<131 AND p.CommentCount>10 AND p.CommentCount<26 AND u.DownVotes>293 AND u.DownVotes<1198 AND v.CreationDate>'2011-03-25 21:11:52'::timestamp AND v.CreationDate<'2014-09-04 23:12:59'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2012-10-09 02:44:43'::timestamp AND b.Date<'2014-06-01 02:26:16'::timestamp;

