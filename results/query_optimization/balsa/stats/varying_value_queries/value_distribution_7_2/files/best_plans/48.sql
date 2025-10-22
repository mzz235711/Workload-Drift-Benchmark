/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<101 AND p.CommentCount>17 AND p.CommentCount<22 AND u.DownVotes>3 AND u.DownVotes<1566 AND v.CreationDate>'2010-10-05 01:53:18'::timestamp AND v.CreationDate<'2011-05-05 19:33:48'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<15 AND b.Date>'2011-01-02 14:51:08'::timestamp AND b.Date<'2014-03-12 00:57:23'::timestamp;

