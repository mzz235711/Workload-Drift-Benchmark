/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>102 AND p.Score<175 AND p.CommentCount>1 AND p.CommentCount<33 AND u.DownVotes>70 AND u.DownVotes<846 AND v.CreationDate>'2009-09-02 13:18:57'::timestamp AND v.CreationDate<'2014-01-30 04:48:35'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<11 AND b.Date>'2011-01-25 14:03:09'::timestamp AND b.Date<'2013-06-04 20:06:06'::timestamp;

