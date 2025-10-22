/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<123 AND p.CommentCount>8 AND p.CommentCount<30 AND u.DownVotes>109 AND u.DownVotes<1865 AND v.CreationDate>'2009-05-16 15:43:25'::timestamp AND v.CreationDate<'2012-01-27 01:39:37'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<8 AND b.Date>'2012-02-21 02:35:09'::timestamp AND b.Date<'2012-05-13 05:10:25'::timestamp;

