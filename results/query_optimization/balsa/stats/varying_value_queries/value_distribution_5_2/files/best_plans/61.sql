/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>94 AND p.Score<185 AND p.CommentCount>6 AND p.CommentCount<38 AND u.DownVotes>61 AND u.DownVotes<1046 AND v.CreationDate>'2009-05-20 17:05:10'::timestamp AND v.CreationDate<'2013-01-23 01:24:57'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2012-08-23 01:09:09'::timestamp AND b.Date<'2012-11-04 07:34:06'::timestamp;

