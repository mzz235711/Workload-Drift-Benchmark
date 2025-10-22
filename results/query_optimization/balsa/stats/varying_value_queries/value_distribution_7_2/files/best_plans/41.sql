/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<114 AND p.CommentCount>7 AND p.CommentCount<26 AND u.DownVotes>747 AND u.DownVotes<1156 AND v.CreationDate>'2010-05-02 14:11:54'::timestamp AND v.CreationDate<'2013-03-04 10:09:51'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2013-09-11 18:56:24'::timestamp AND b.Date<'2013-12-11 00:57:35'::timestamp;

