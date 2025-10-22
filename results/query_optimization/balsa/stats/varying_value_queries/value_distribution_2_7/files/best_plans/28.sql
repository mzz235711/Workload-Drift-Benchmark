/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<103 AND p.CommentCount>9 AND p.CommentCount<23 AND u.DownVotes>264 AND u.DownVotes<985 AND v.CreationDate>'2014-02-23 08:28:11'::timestamp AND v.CreationDate<'2014-05-11 01:39:19'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<14 AND b.Date>'2013-10-28 12:48:09'::timestamp AND b.Date<'2014-05-10 21:05:47'::timestamp;

