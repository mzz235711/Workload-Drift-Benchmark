/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<104 AND p.CommentCount>6 AND p.CommentCount<23 AND u.DownVotes>352 AND u.DownVotes<585 AND v.CreationDate>'2010-03-02 00:04:13'::timestamp AND v.CreationDate<'2012-05-18 05:35:09'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<12 AND b.Date>'2011-04-11 01:35:19'::timestamp AND b.Date<'2014-07-11 15:32:53'::timestamp;

