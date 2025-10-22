/*+ NestLoop(v p u b)
 MergeJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>103 AND p.Score<178 AND p.CommentCount>4 AND p.CommentCount<28 AND u.DownVotes>7 AND u.DownVotes<676 AND v.CreationDate>'2010-09-25 19:46:43'::timestamp AND v.CreationDate<'2013-02-20 10:09:43'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2012-04-13 05:24:06'::timestamp AND b.Date<'2014-05-21 19:59:50'::timestamp;

