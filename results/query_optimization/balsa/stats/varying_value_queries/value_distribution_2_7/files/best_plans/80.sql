/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<145 AND p.CommentCount>8 AND p.CommentCount<42 AND u.DownVotes>31 AND u.DownVotes<1899 AND v.CreationDate>'2013-10-25 01:55:23'::timestamp AND v.CreationDate<'2014-09-12 01:21:09'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2011-07-14 12:54:09'::timestamp AND b.Date<'2011-12-06 13:49:47'::timestamp;

