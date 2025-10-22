/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>20 AND p.Score<69 AND p.CommentCount>13 AND p.CommentCount<30 AND u.DownVotes>58 AND u.DownVotes<305 AND v.CreationDate>'2010-12-21 12:34:41'::timestamp AND v.CreationDate<'2011-03-14 18:30:27'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2011-03-03 17:07:05'::timestamp AND b.Date<'2012-03-02 19:31:19'::timestamp;

